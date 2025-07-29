.class Lcom/ea/InAppWebBrowser/BrowserAndroid$1$1;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/InAppWebBrowser/BrowserAndroid$1;


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid$1;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1$1;->this$1:Lcom/ea/InAppWebBrowser/BrowserAndroid$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 66
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
