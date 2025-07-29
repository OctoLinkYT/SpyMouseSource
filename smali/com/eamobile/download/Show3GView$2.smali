.class final Lcom/eamobile/download/Show3GView$2;
.super Ljava/lang/Object;
.source "Show3GView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/Show3GView;->showContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/Show3GView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/Show3GView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/eamobile/download/Show3GView$2;->this$0:Lcom/eamobile/download/Show3GView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/eamobile/download/Show3GView$2;->this$0:Lcom/eamobile/download/Show3GView;

    iget-object v1, v1, Lcom/eamobile/download/Show3GView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 116
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivityInternal;->test3GNetwork()Z

    move-result v0

    .line 117
    .local v0, "isNWAvailable":Z
    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_0
.end method
