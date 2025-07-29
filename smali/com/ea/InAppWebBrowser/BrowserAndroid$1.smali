.class Lcom/ea/InAppWebBrowser/BrowserAndroid$1;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid;-><init>(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

.field final synthetic val$browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

.field final synthetic val$height:I

.field final synthetic val$javascriptState:I

.field final synthetic val$scrollbarState:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Lcom/ea/InAppWebBrowser/BrowserAndroid;IIIIII)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object p2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput p3, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$javascriptState:I

    iput p4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarState:I

    iput p5, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$width:I

    iput p6, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$height:I

    iput p7, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$x:I

    iput p8, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v2, Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLayout:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v2, Landroid/webkit/WebView;

    sget-object v3, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    .line 52
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v2, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-direct {v2}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;-><init>()V

    iput-object v2, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    .line 53
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object v2, v1, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->browser:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    .line 54
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v2, v2, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 57
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/ea/InAppWebBrowser/BrowserAndroid$1$1;

    invoke-direct {v2, p0}, Lcom/ea/InAppWebBrowser/BrowserAndroid$1$1;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    iget v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$javascriptState:I

    if-ne v1, v4, :cond_0

    .line 78
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarState:I

    if-nez v2, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarState:I

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$width:I

    iget v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$x:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 86
    iget v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$y:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 88
    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v2, v2, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    sget-object v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v2, v2, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    return-void

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    move v2, v5

    .line 81
    goto :goto_0

    :cond_2
    move v2, v5

    .line 82
    goto :goto_1
.end method
