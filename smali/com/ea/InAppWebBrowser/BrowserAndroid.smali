.class public Lcom/ea/InAppWebBrowser/BrowserAndroid;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"


# static fields
.field public static mActivity:Landroid/app/Activity;

.field public static mViewGroup:Landroid/view/ViewGroup;


# instance fields
.field public final JAVASCRIPT_DISABLE:I

.field public final JAVASCRIPT_ENABLE:I

.field public final SCROLLBAR_INVISIBLE:I

.field public final SCROLLBAR_VISIBLE:I

.field public mLayout:Landroid/widget/RelativeLayout;

.field public mWebView:Landroid/webkit/WebView;

.field public mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;


# direct methods
.method constructor <init>(IIIIII)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "javascriptState"    # I
    .param p6, "scrollbarState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBAR_VISIBLE:I

    .line 25
    iput v3, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBAR_INVISIBLE:I

    .line 28
    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->JAVASCRIPT_DISABLE:I

    .line 29
    iput v3, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->JAVASCRIPT_ENABLE:I

    .line 42
    move-object v2, p0

    .line 45
    .local v2, "browser":Lcom/ea/InAppWebBrowser/BrowserAndroid;
    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;

    move-object v1, p0

    move v3, p5

    move v4, p6

    move v5, p3

    move v6, p4

    move v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Lcom/ea/InAppWebBrowser/BrowserAndroid;IIIIII)V

    .line 93
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public static Init(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    sput-object p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    .line 36
    sput-object p1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mViewGroup:Landroid/view/ViewGroup;

    .line 37
    return-void
.end method


# virtual methods
.method public OpenUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;

    invoke-direct {v0, p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    .line 108
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public Shutdown()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;

    invoke-direct {v0, p0}, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;)V

    .line 129
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method
