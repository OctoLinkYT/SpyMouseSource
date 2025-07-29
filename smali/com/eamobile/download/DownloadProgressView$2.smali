.class final Lcom/eamobile/download/DownloadProgressView$2;
.super Landroid/os/Handler;
.source "DownloadProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eamobile/download/DownloadProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/DownloadProgressView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadProgressView;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    sget v6, Lcom/eamobile/download/DownloadActivityInternal;->totalDownloadSizeMB:I

    .line 137
    .local v6, "downloadMax":I
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getSizeDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v7, v0

    .line 139
    .local v7, "downloadProgress":I
    if-lez v6, :cond_0

    .line 141
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-static {v0}, Lcom/eamobile/download/DownloadProgressView;->access$000(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/IProgressDialog;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/eamobile/download/IProgressDialog;->setDownloadMax(I)V

    .line 142
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-static {v0}, Lcom/eamobile/download/DownloadProgressView;->access$000(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/IProgressDialog;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/eamobile/download/IProgressDialog;->setDownloadProgress(I)V

    .line 143
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-static {v0}, Lcom/eamobile/download/DownloadProgressView;->access$000(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/IProgressDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/eamobile/download/IProgressDialog;->updateDialog()V

    .line 146
    :cond_0
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->getPercentDownloaded()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    sget-boolean v0, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    if-eqz v0, :cond_2

    .line 148
    const-string v0, "Going to State SUCCESS"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-static {v0}, Lcom/eamobile/download/DownloadProgressView;->access$000(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/IProgressDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/eamobile/download/IProgressDialog;->dismissDialog()V

    .line 150
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 172
    .end local v6    # "downloadMax":I
    .end local v7    # "downloadProgress":I
    :cond_1
    :goto_0
    return-void

    .line 153
    .restart local v6    # "downloadMax":I
    .restart local v7    # "downloadProgress":I
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    if-nez v0, :cond_3

    .line 155
    const-string v0, "Going to State RETRY"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {v0}, Lcom/eamobile/download/DownloadProgressView;->access$102(Ljava/util/Timer;)Ljava/util/Timer;

    .line 157
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    new-instance v1, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;

    iget-object v2, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-direct {v1, v2}, Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;-><init>(Lcom/eamobile/download/DownloadProgressView;)V

    invoke-static {v0, v1}, Lcom/eamobile/download/DownloadProgressView;->access$202(Lcom/eamobile/download/DownloadProgressView;Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;)Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;

    .line 158
    invoke-static {}, Lcom/eamobile/download/DownloadProgressView;->access$100()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-static {v1}, Lcom/eamobile/download/DownloadProgressView;->access$200(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/DownloadProgressView$RetryTimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3a98

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v6    # "downloadMax":I
    .end local v7    # "downloadProgress":I
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 170
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception here:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",DownloadActivityInternal.getMainActivity():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "downloadMax":I
    .restart local v7    # "downloadProgress":I
    :cond_3
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 162
    const-string v0, "Going to State FAILURE"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgressView$2;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-static {v0}, Lcom/eamobile/download/DownloadProgressView;->access$000(Lcom/eamobile/download/DownloadProgressView;)Lcom/eamobile/download/IProgressDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/eamobile/download/IProgressDialog;->dismissDialog()V

    .line 164
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
