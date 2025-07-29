.class final Lcom/eamobile/download/DownloadFailedView$2;
.super Ljava/lang/Object;
.source "DownloadFailedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/DownloadFailedView;->showContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/DownloadFailedView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadFailedView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/eamobile/download/DownloadFailedView$2;->this$0:Lcom/eamobile/download/DownloadFailedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eamobile/download/DownloadFailedView$2;->this$0:Lcom/eamobile/download/DownloadFailedView;

    iget-object v0, v0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 106
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 108
    return-void
.end method
