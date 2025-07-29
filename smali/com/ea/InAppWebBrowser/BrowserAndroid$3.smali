.class Lcom/ea/InAppWebBrowser/BrowserAndroid$3;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid;->Shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 120
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 121
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object v2, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    .line 122
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 123
    sget-object v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object v2, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    .line 125
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object v2, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLayout:Landroid/widget/RelativeLayout;

    .line 126
    return-void
.end method
