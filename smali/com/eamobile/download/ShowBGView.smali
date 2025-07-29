.class public Lcom/eamobile/download/ShowBGView;
.super Lcom/eamobile/download/CustomView;
.source "ShowBGView.java"


# static fields
.field protected static final MSG_CHANGE_TO_SUCCESS_STATE:I = 0x1

.field protected static final MSG_DECREASE_COUNTER:I


# instance fields
.field count:I

.field public handler:Landroid/os/Handler;

.field showBG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/eamobile/download/CustomView;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/eamobile/download/ShowBGView;->count:I

    .line 14
    iput-boolean v0, p0, Lcom/eamobile/download/ShowBGView;->showBG:Z

    .line 79
    new-instance v0, Lcom/eamobile/download/ShowBGView$2;

    invoke-direct {v0, p0}, Lcom/eamobile/download/ShowBGView$2;-><init>(Lcom/eamobile/download/ShowBGView;)V

    iput-object v0, p0, Lcom/eamobile/download/ShowBGView;->handler:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/eamobile/download/ShowBGView;->context:Landroid/content/Context;

    .line 20
    const/16 v0, 0x1388

    iput v0, p0, Lcom/eamobile/download/ShowBGView;->count:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eamobile/download/ShowBGView;->showBG:Z

    .line 22
    return-void
.end method

.method private showContent(Landroid/view/View;)V
    .locals 2
    .param p1, "viewParent"    # Landroid/view/View;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/eamobile/download/ShowBGView$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/ShowBGView$1;-><init>(Lcom/eamobile/download/ShowBGView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    .local v0, "background":Ljava/lang/Thread;
    const-string v1, "ShowBGView.showContent: will start thread"

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->clean()V

    .line 37
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->init()V

    .line 27
    const-string v0, "ShowBGView.init: before calling showContent"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eamobile/download/ShowBGView;->showBG:Z

    .line 29
    const/16 v0, 0x1388

    iput v0, p0, Lcom/eamobile/download/ShowBGView;->count:I

    .line 30
    invoke-direct {p0, p0}, Lcom/eamobile/download/ShowBGView;->showContent(Landroid/view/View;)V

    .line 31
    const-string v0, "ShowBGView.init: after calling showContent"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "ShowBGView.resume: before calling showContent"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p0}, Lcom/eamobile/download/ShowBGView;->showContent(Landroid/view/View;)V

    .line 44
    const-string v0, "ShowBGView.resume: after calling showContent"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 45
    return-void
.end method
