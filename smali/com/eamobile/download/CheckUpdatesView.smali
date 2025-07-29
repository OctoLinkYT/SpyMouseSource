.class public Lcom/eamobile/download/CheckUpdatesView;
.super Lcom/eamobile/download/CustomView;
.source "CheckUpdatesView.java"


# static fields
.field protected static final MSG_NO_UPDATES:I = 0x0

.field protected static final MSG_UPDATE_FOUND:I = 0x1


# instance fields
.field dialog:Landroid/app/Dialog;

.field public handler:Landroid/os/Handler;

.field updateFound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/eamobile/download/CustomView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eamobile/download/CheckUpdatesView;->updateFound:Z

    .line 77
    new-instance v0, Lcom/eamobile/download/CheckUpdatesView$2;

    invoke-direct {v0, p0}, Lcom/eamobile/download/CheckUpdatesView$2;-><init>(Lcom/eamobile/download/CheckUpdatesView;)V

    iput-object v0, p0, Lcom/eamobile/download/CheckUpdatesView;->handler:Landroid/os/Handler;

    .line 21
    iput-object p1, p0, Lcom/eamobile/download/CheckUpdatesView;->context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private showContent(Landroid/view/View;)V
    .locals 0
    .param p1, "viewParent"    # Landroid/view/View;

    .prologue
    .line 75
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->clean()V

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/eamobile/download/CheckUpdatesView;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/eamobile/download/CheckUpdatesView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckUpdates View clean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 26
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->init()V

    .line 28
    iget-object v0, p0, Lcom/eamobile/download/CheckUpdatesView;->context:Landroid/content/Context;

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/eamobile/download/CheckUpdatesView;->dialog:Landroid/app/Dialog;

    .line 30
    new-instance v0, Lcom/eamobile/download/CheckUpdatesView$1;

    invoke-direct {v0, p0}, Lcom/eamobile/download/CheckUpdatesView$1;-><init>(Lcom/eamobile/download/CheckUpdatesView;)V

    invoke-virtual {v0}, Lcom/eamobile/download/CheckUpdatesView$1;->start()V

    .line 47
    invoke-direct {p0, p0}, Lcom/eamobile/download/CheckUpdatesView;->showContent(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p0}, Lcom/eamobile/download/CheckUpdatesView;->showContent(Landroid/view/View;)V

    .line 71
    return-void
.end method
