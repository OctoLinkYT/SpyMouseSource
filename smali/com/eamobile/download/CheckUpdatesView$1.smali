.class final Lcom/eamobile/download/CheckUpdatesView$1;
.super Ljava/lang/Thread;
.source "CheckUpdatesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/CheckUpdatesView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/CheckUpdatesView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/CheckUpdatesView;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/eamobile/download/CheckUpdatesView$1;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/eamobile/download/CheckUpdatesView$1;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivityInternal;->updateFound()Z

    move-result v1

    iput-boolean v1, v0, Lcom/eamobile/download/CheckUpdatesView;->updateFound:Z

    .line 35
    iget-object v0, p0, Lcom/eamobile/download/CheckUpdatesView$1;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    iget-boolean v0, v0, Lcom/eamobile/download/CheckUpdatesView;->updateFound:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/eamobile/download/CheckUpdatesView$1;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    iget-object v0, v0, Lcom/eamobile/download/CheckUpdatesView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/eamobile/download/CheckUpdatesView$1;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    iget-object v0, v0, Lcom/eamobile/download/CheckUpdatesView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
