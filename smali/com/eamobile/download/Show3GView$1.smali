.class final Lcom/eamobile/download/Show3GView$1;
.super Ljava/lang/Object;
.source "Show3GView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 103
    iput-object p1, p0, Lcom/eamobile/download/Show3GView$1;->this$0:Lcom/eamobile/download/Show3GView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 109
    return-void
.end method
