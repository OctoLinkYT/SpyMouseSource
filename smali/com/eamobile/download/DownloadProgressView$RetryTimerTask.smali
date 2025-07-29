.class Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;
.super Ljava/util/TimerTask;
.source "DownloadProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eamobile/download/DownloadProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetryTimerTask"
.end annotation


# static fields
.field static final QTY_RETRY:I = 0xa


# instance fields
.field numTries:I

.field final synthetic this$0:Lcom/eamobile/download/DownloadProgressView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadProgressView;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 178
    const/16 v0, 0xa

    iput v0, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to download assets (attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    sub-int v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in RetryTimerTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 182
    iget v1, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    if-lez v1, :cond_1

    .line 185
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivityInternal;->startDownload()Z

    move-result v0

    .line 186
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download: Succesful (in RetryTimerTask, after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    sub-int v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempt(s))."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/eamobile/download/DownloadProgressView;->access$100()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 190
    sput-boolean v5, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    .line 191
    iput v4, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    .line 193
    :cond_0
    iget v1, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    .line 202
    .end local v0    # "success":Z
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string v1, "Download: Failed (in RetryTimerTask)."

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/eamobile/download/DownloadProgressView;->access$100()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 199
    iget-object v1, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->this$0:Lcom/eamobile/download/DownloadProgressView;

    iget-object v1, v1, Lcom/eamobile/download/DownloadProgressView;->progressHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    iput v4, p0, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;->numTries:I

    goto :goto_0
.end method
