.class final Lcom/eamobile/download/SpaceUnavailableView$2;
.super Ljava/lang/Object;
.source "SpaceUnavailableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/SpaceUnavailableView;->showContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/SpaceUnavailableView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/SpaceUnavailableView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/eamobile/download/SpaceUnavailableView$2;->this$0:Lcom/eamobile/download/SpaceUnavailableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/eamobile/download/SpaceUnavailableView$2;->this$0:Lcom/eamobile/download/SpaceUnavailableView;

    iget-object v0, v0, Lcom/eamobile/download/SpaceUnavailableView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 118
    :try_start_0
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->startDataManagement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method
