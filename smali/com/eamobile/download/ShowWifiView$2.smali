.class final Lcom/eamobile/download/ShowWifiView$2;
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
    .line 118
    iput-object p1, p0, Lcom/eamobile/download/ShowWifiView$2;->this$0:Lcom/eamobile/download/ShowWifiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/eamobile/download/ShowWifiView$2;->this$0:Lcom/eamobile/download/ShowWifiView;

    iget-object v0, v0, Lcom/eamobile/download/ShowWifiView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->startWifiManager()V

    .line 122
    return-void
.end method
