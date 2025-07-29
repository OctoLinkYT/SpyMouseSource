.class final Lcom/eamobile/download/CheckUpdatesView$2;
.super Landroid/os/Handler;
.source "CheckUpdatesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eamobile/download/CheckUpdatesView;
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
    .line 78
    iput-object p1, p0, Lcom/eamobile/download/CheckUpdatesView$2;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 83
    const-string v0, "An update has been found"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/eamobile/download/CheckUpdatesView$2;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    iget-object v0, v0, Lcom/eamobile/download/CheckUpdatesView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 86
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 93
    const-string v0, "No updates found"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/eamobile/download/CheckUpdatesView$2;->this$0:Lcom/eamobile/download/CheckUpdatesView;

    iget-object v0, v0, Lcom/eamobile/download/CheckUpdatesView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_0
.end method
