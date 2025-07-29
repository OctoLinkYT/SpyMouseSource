.class public Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "InAppWebBrowserWebViewClient.java"


# instance fields
.field public browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public native OnLoadError(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)V
.end method

.method public native OnLoadFinished(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)V
.end method

.method public native OnLoadStarted(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)V
.end method

.method public native ShouldLoadURL(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)Z
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "InAppWebBrowserWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {p0, p2, v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadStarted(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)V

    .line 29
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "InAppWebBrowserWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {p0, p2, v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadFinished(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)V

    .line 47
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    const-string v0, "InAppWebBrowserWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {p0, p2, v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadStarted(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)V

    .line 38
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "InAppWebBrowserWebViewClient"

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading Error. URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {p0, v0, v1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadError(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)V

    .line 56
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "InAppWebBrowserWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {p0, p2, v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->ShouldLoadURL(Ljava/lang/String;Lcom/ea/InAppWebBrowser/BrowserAndroid;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
