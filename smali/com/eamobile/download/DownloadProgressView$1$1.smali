.class final Lcom/eamobile/download/DownloadProgressView$1$1;
.super Ljava/lang/Thread;
.source "DownloadProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/DownloadProgressView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eamobile/download/DownloadProgressView$1;


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadProgressView$1;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/eamobile/download/DownloadProgressView$1$1;->this$1:Lcom/eamobile/download/DownloadProgressView$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "STARTING A NEW DOWNLOAD >>>>>>>"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->startDownload()Z

    move-result v0

    sput-boolean v0, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DOWNLOADED in PROGRESS VIEW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 74
    sget-boolean v0, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView$1$1;->this$1:Lcom/eamobile/download/DownloadProgressView$1;

    iget-object v0, v0, Lcom/eamobile/download/DownloadProgressView$1;->this$0:Lcom/eamobile/download/DownloadProgressView;

    iget-object v0, v0, Lcom/eamobile/download/DownloadProgressView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    :cond_0
    return-void
.end method
