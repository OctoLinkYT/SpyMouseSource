.class public Lcom/eamobile/download/DownloadActivity;
.super Ljava/lang/Object;
.source "DownloadActivity.java"


# instance fields
.field private mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/eamobile/download/DownloadActivityInternal;

    invoke-direct {v0, p1}, Lcom/eamobile/download/DownloadActivityInternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivity;->mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bg"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/eamobile/download/DownloadActivityInternal;

    invoke-direct {v0, p1, p2}, Lcom/eamobile/download/DownloadActivityInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivity;->mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;

    .line 18
    return-void
.end method


# virtual methods
.method public destroyDownloadActvity()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivity;->mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->destroyDownloadActvity()V

    .line 38
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/eamobile/download/IDownloadActivity;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "downloadActivity"    # Lcom/eamobile/download/IDownloadActivity;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "glContext"    # Ljava/lang/Object;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivity;->mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/eamobile/download/DownloadActivityInternal;->init(Landroid/app/Activity;Lcom/eamobile/download/IDownloadActivity;Landroid/content/Context;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivity;->mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->onDestroy()V

    .line 33
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivity;->mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivityInternal;->onResume()V

    .line 28
    return-void
.end method

.method public setAssetPath(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "useExternalStorageDirectory"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivity;->mDownloadActivityInternal:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-virtual {v0, p1, p2}, Lcom/eamobile/download/DownloadActivityInternal;->setAssetPath(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method
