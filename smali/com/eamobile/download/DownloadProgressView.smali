.class public Lcom/eamobile/download/DownloadProgressView;
.super Lcom/eamobile/download/CustomView;
.source "DownloadProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;
    }
.end annotation


# static fields
.field protected static final MSG_DOWNLOAD_FAILURE:I = 0x2

.field protected static final MSG_DOWNLOAD_RETRY:I = 0x1

.field public static downloaded:Z

.field private static t:Ljava/util/Timer;


# instance fields
.field private progressDialog:Lcom/eamobile/download/IProgressDialog;

.field public progressHandler:Landroid/os/Handler;

.field private timerTask:Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/eamobile/download/CustomView;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v0, Lcom/eamobile/download/DownloadProgressView$2;

    invoke-direct {v0, p0}, Lcom/eamobile/download/DownloadProgressView$2;-><init>(Lcom/eamobile/download/DownloadProgressView;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadProgressView;->progressHandler:Landroid/os/Handler;

    .line 26
    const-string v0, "DownloadProgressView constructor"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/eamobile/download/DownloadProgressView;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/IProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/eamobile/download/DownloadProgressView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/eamobile/download/DownloadProgressView;->t:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 12
    sput-object p0, Lcom/eamobile/download/DownloadProgressView;->t:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/eamobile/download/DownloadProgressView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView;->timerTask:Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/eamobile/download/DownloadProgressView;Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;)Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;
    .locals 0
    .param p0, "x0"    # Lcom/eamobile/download/DownloadProgressView;
    .param p1, "x1"    # Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/eamobile/download/DownloadProgressView;->timerTask:Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;

    return-object p1
.end method

.method private showContent(Landroid/view/View;)V
    .locals 1
    .param p1, "viewParent"    # Landroid/view/View;

    .prologue
    .line 123
    const-string v0, "DownloadProgressView showContent"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    invoke-interface {v0}, Lcom/eamobile/download/IProgressDialog;->showDialogContent()V

    .line 126
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->clean()V

    .line 105
    const-string v1, "DownloadProgressView clean"

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    invoke-interface {v1}, Lcom/eamobile/download/IProgressDialog;->isDialogValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    invoke-interface {v1}, Lcom/eamobile/download/IProgressDialog;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadProgressView Clean Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->init()V

    .line 45
    const-string v1, "DownloadProgressView init"

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivityInternal;->useCustomProgressBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lcom/eamobile/download/CustomProgressDialog;

    iget-object v2, p0, Lcom/eamobile/download/DownloadProgressView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/eamobile/download/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    invoke-interface {v1}, Lcom/eamobile/download/IProgressDialog;->initDialog()V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/eamobile/download/DownloadProgressView$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DownloadProgressView$1;-><init>(Lcom/eamobile/download/DownloadProgressView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v0, "background":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadProgressView;->showContent(Landroid/view/View;)V

    .line 99
    return-void

    .line 53
    .end local v0    # "background":Ljava/lang/Thread;
    :cond_0
    new-instance v1, Lcom/eamobile/download/DefaultProgressDialog;

    iget-object v2, p0, Lcom/eamobile/download/DownloadProgressView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/eamobile/download/DefaultProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "DownloadProgressView resume"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView;->progressDialog:Lcom/eamobile/download/IProgressDialog;

    invoke-interface {v0}, Lcom/eamobile/download/IProgressDialog;->isDialogValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadProgressView;->showContent(Landroid/view/View;)V

    .line 39
    :cond_0
    return-void
.end method
