.class final Lcom/eamobile/download/UpdatesFoundView$3;
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
    .line 123
    iput-object p1, p0, Lcom/eamobile/download/UpdatesFoundView$3;->this$0:Lcom/eamobile/download/UpdatesFoundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eamobile/download/UpdatesFoundView$3;->this$0:Lcom/eamobile/download/UpdatesFoundView;

    iget-object v0, v0, Lcom/eamobile/download/UpdatesFoundView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 127
    return-void
.end method
