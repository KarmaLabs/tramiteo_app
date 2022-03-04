import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tramiteo/core/widgets/webview/webview_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'dart:io';

class FlutterWebview extends StatefulWidget {
  final WebviewModel webviewModel;
  const FlutterWebview({required this.webviewModel, Key? key})
      : super(key: key);

  @override
  State<FlutterWebview> createState() => _FlutterWebviewState();
}

class _FlutterWebviewState extends State<FlutterWebview> {
  bool isLoading = true;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  // Widget favoriteButton() {
  //   return FutureBuilder<WebViewController>(
  //       future: _controller.future,
  //       builder: (BuildContext context,
  //           AsyncSnapshot<WebViewController> controller) {
  //         if (controller.hasData) {
  //           return FloatingActionButton(
  //             onPressed: () async {
  //               final String url = (await controller.data!.currentUrl())!;
  //               // ignore: deprecated_member_use
  //               Scaffold.of(context).showSnackBar(
  //                 SnackBar(content: Text('Favorited $url')),
  //               );
  //             },
  //             child: const Icon(Icons.favorite),
  //           );
  //         }
  //         return Container();
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.webviewModel.title),
        // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
        actions: <Widget>[
          NavigationControls(_controller.future, widget.webviewModel.url),
          //SampleMenu(_controller.future),
        ],
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: widget.webviewModel.url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onProgress: (int progress) {
              //print("WebView is loading (progress : $progress%)");
              //const CircularProgressIndicator();
            },
            // javascriptChannels: <JavascriptChannel>{
            //   _toasterJavascriptChannel(context),
            // },
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                print('blocking navigation to $request}');
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (String url) {
              setState(() {
                isLoading = false;
              });
            },
            gestureNavigationEnabled: true,
            // appBar: AppBar(
            //   title: Text(widget.title),
            //   actions: <Widget>[
            //     IconButton(
            //       icon: const Icon(Icons.arrow_back_ios),
            //       onPressed: () {
            //         flutterWebViewPlugin.goBack();
            //       },
            //     ),
            //     IconButton(
            //       icon: const Icon(Icons.arrow_forward_ios),
            //       onPressed: () {
            //         flutterWebViewPlugin.goForward();
            //       },
            //     ),
            //     IconButton(
            //       icon: const Icon(Icons.autorenew),
            //       onPressed: () {
            //         flutterWebViewPlugin.reload();
            //       },
            //     ),
            //   ],
            // ),
            // withZoom: true,
            // withLocalStorage: true,
            // hidden: true,
            // initialChild: Container(
            //   color: Colors.green,
            //   child: const Center(
            //     child: Text('Waiting.....'),
            //   ),
            // ),
          ),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(),
        ],
      ),
      //floatingActionButton: favoriteButton(),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture, this._url);

  final Future<WebViewController> _webViewControllerFuture;
  final String _url;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController? controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller!.canGoBack()) {
                        await controller.goBack();
                      } else {
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(content: Text("No back history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller!.canGoForward()) {
                        await controller.goForward();
                      } else {
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("No forward history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                      controller!.reload();
                    },
            ),
            IconButton(
              icon: const Icon(EvaIcons.externalLinkOutline),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      await canLaunch(_url)
                          ? await launch(_url)
                          : throw 'Could not launch $_url';
                    },
            ),
          ],
        );
      },
    );
  }
}
