.class final Lcom/eamobile/download/ShowWifiView$4;
.super Ljava/lang/Object;
.source "ShowWifiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/ShowWifiView;->showContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/ShowWifiView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/ShowWifiView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/eamobile/download/ShowWifiView$4;->this$0:Lcom/eamobile/download/ShowWifiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/eamobile/download/ShowWifiView$4;->this$0:Lcom/eamobile/download/ShowWifiView;

    iget-object v0, v0, Lcom/eamobile/download/ShowWifiView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 138
    return-void
.end method
