.class final Lcom/eamobile/download/Show3GView$3;
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
    .line 130
    iput-object p1, p0, Lcom/eamobile/download/Show3GView$3;->this$0:Lcom/eamobile/download/Show3GView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/eamobile/download/Show3GView$3;->this$0:Lcom/eamobile/download/Show3GView;

    iget-object v0, v0, Lcom/eamobile/download/Show3GView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 133
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->startGameActivity(I)V

    .line 134
    return-void
.end method
