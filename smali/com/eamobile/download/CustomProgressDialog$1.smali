.class final Lcom/eamobile/download/CustomProgressDialog$1;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/CustomProgressDialog;->showDialogContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/CustomProgressDialog;


# direct methods
.method constructor <init>(Lcom/eamobile/download/CustomProgressDialog;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eamobile/download/CustomProgressDialog$1;->this$0:Lcom/eamobile/download/CustomProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 101
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->startGameActivity(I)V

    .line 102
    return-void
.end method
