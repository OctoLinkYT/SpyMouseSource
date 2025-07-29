.class final Lcom/eamobile/download/DownloadMsgView$2;
.super Ljava/lang/Object;
.source "DownloadMsgView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/DownloadMsgView;->showContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/DownloadMsgView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadMsgView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/eamobile/download/DownloadMsgView$2;->this$0:Lcom/eamobile/download/DownloadMsgView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/eamobile/download/DownloadMsgView$2;->this$0:Lcom/eamobile/download/DownloadMsgView;

    iget-object v0, v0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 113
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->isSpaceAvailableForDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->isWifiAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_0
.end method
