.class final Lcom/eamobile/download/DownloadProgressView$1;
.super Ljava/lang/Object;
.source "DownloadProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/DownloadProgressView;->init()V
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
    .line 59
    iput-object p1, p0, Lcom/eamobile/download/DownloadProgressView$1;->this$0:Lcom/eamobile/download/DownloadProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    .line 67
    new-instance v1, Lcom/eamobile/download/DownloadProgressView$1$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DownloadProgressView$1$1;-><init>(Lcom/eamobile/download/DownloadProgressView$1;)V

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadProgressView$1$1;->start()V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadProgressView before background loop downloaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 83
    :goto_0
    sget-boolean v1, Lcom/eamobile/download/DownloadProgressView;->downloaded:Z

    if-nez v1, :cond_0

    .line 85
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 86
    iget-object v1, p0, Lcom/eamobile/download/DownloadProgressView$1;->this$0:Lcom/eamobile/download/DownloadProgressView;

    iget-object v1, v1, Lcom/eamobile/download/DownloadProgressView;->progressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/eamobile/download/DownloadProgressView$1;->this$0:Lcom/eamobile/download/DownloadProgressView;

    iget-object v2, v2, Lcom/eamobile/download/DownloadProgressView;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadProgressView init Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
