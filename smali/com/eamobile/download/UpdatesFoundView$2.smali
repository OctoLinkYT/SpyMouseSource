.class final Lcom/eamobile/download/UpdatesFoundView$2;
.super Ljava/lang/Object;
.source "UpdatesFoundView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/UpdatesFoundView;->showContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/UpdatesFoundView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/UpdatesFoundView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/eamobile/download/UpdatesFoundView$2;->this$0:Lcom/eamobile/download/UpdatesFoundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/eamobile/download/UpdatesFoundView$2;->this$0:Lcom/eamobile/download/UpdatesFoundView;

    iget-object v0, v0, Lcom/eamobile/download/UpdatesFoundView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 117
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->updateDownload()V

    .line 118
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 119
    return-void
.end method
