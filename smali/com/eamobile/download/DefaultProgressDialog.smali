.class public Lcom/eamobile/download/DefaultProgressDialog;
.super Lcom/eamobile/download/CustomView;
.source "DefaultProgressDialog.java"

# interfaces
.implements Lcom/eamobile/download/IProgressDialog;


# static fields
.field private static mSetProgressNumberFormat:Ljava/lang/reflect/Method;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private max:I

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/eamobile/download/CustomView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/eamobile/download/DefaultProgressDialog;->context:Landroid/content/Context;

    .line 25
    sput-object v1, Lcom/eamobile/download/DefaultProgressDialog;->mSetProgressNumberFormat:Ljava/lang/reflect/Method;

    .line 26
    iput-object v1, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    .line 27
    iput v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->progress:I

    .line 28
    iput v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->max:I

    .line 29
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 55
    return-void
.end method

.method public initDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    :try_start_0
    const-class v0, Landroid/app/ProgressDialog;

    const-string v1, "setProgressNumberFormat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/eamobile/download/DefaultProgressDialog;->mSetProgressNumberFormat:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/eamobile/download/DefaultProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 44
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 48
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 49
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isDialogValid()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownloadMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/eamobile/download/DefaultProgressDialog;->max:I

    .line 117
    return-void
.end method

.method public setDownloadProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/eamobile/download/DefaultProgressDialog;->progress:I

    .line 111
    return-void
.end method

.method public showDialogContent()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 68
    iget-object v0, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/eamobile/download/DefaultProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DefaultProgressDialog$1;-><init>(Lcom/eamobile/download/DefaultProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 77
    return-void
.end method

.method public updateDialog()V
    .locals 7

    .prologue
    .line 84
    :try_start_0
    sget-object v2, Lcom/eamobile/download/DefaultProgressDialog;->mSetProgressNumberFormat:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/eamobile/download/DefaultProgressDialog;->max:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    sget-object v2, Lcom/eamobile/download/DefaultProgressDialog;->mSetProgressNumberFormat:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "%d MB of %d MB"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/eamobile/download/DefaultProgressDialog;->progress:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 95
    .local v1, "ite":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadActivityInternal;->getPercentDownloaded()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 99
    .end local v1    # "ite":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception here:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/eamobile/download/DefaultProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadActivityInternal;->getPercentDownloaded()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0
.end method
