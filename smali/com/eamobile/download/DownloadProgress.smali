.class public Lcom/eamobile/download/DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eamobile/download/DownloadProgress$FileProgress;
    }
.end annotation


# instance fields
.field private currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

.field private progressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/eamobile/download/DownloadProgress$FileProgress;",
            ">;"
        }
    .end annotation
.end field

.field private sizeDownloaded:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "DownloadProgress: constructor"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eamobile/download/DownloadProgress;->sizeDownloaded:J

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eamobile/download/DownloadProgress;->progressMap:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    .line 30
    return-void
.end method


# virtual methods
.method public fillCurrentFileDownload(Z)V
    .locals 6
    .param p1, "update"    # Z

    .prologue
    .line 79
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    iget-wide v2, v2, Lcom/eamobile/download/DownloadProgress$FileProgress;->total:J

    iget-object v4, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    iget-wide v4, v4, Lcom/eamobile/download/DownloadProgress$FileProgress;->downloaded:J

    sub-long v0, v2, v4

    .line 83
    .local v0, "max":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    iget-wide v3, v2, Lcom/eamobile/download/DownloadProgress$FileProgress;->downloaded:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/eamobile/download/DownloadProgress$FileProgress;->downloaded:J

    .line 87
    if-eqz p1, :cond_1

    .line 88
    iget-wide v2, p0, Lcom/eamobile/download/DownloadProgress;->sizeDownloaded:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/eamobile/download/DownloadProgress;->sizeDownloaded:J

    .line 95
    .end local v0    # "max":J
    :cond_1
    return-void
.end method

.method public getSizeDownloaded()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/eamobile/download/DownloadProgress;->sizeDownloaded:J

    return-wide v0
.end method

.method public reportProgress(JZ)V
    .locals 4
    .param p1, "downloaded"    # J
    .param p3, "update"    # Z

    .prologue
    .line 57
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    iget-wide v2, v2, Lcom/eamobile/download/DownloadProgress$FileProgress;->total:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    iget-wide p1, v2, Lcom/eamobile/download/DownloadProgress$FileProgress;->total:J

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    iget-wide v2, v2, Lcom/eamobile/download/DownloadProgress$FileProgress;->downloaded:J

    sub-long v0, p1, v2

    .line 63
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 65
    if-eqz p3, :cond_1

    .line 66
    iget-wide v2, p0, Lcom/eamobile/download/DownloadProgress;->sizeDownloaded:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/eamobile/download/DownloadProgress;->sizeDownloaded:J

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    iput-wide p1, v2, Lcom/eamobile/download/DownloadProgress$FileProgress;->downloaded:J

    .line 75
    .end local v0    # "diff":J
    :cond_2
    return-void
.end method

.method public setCurrentFile(Ljava/lang/String;J)V
    .locals 7
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "fileSize"    # J

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProgress: controlling progress for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProgress: size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgress;->progressMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eamobile/download/DownloadProgress$FileProgress;

    .line 44
    .local v6, "fileProgress":Lcom/eamobile/download/DownloadProgress$FileProgress;
    if-nez v6, :cond_0

    .line 46
    new-instance v0, Lcom/eamobile/download/DownloadProgress$FileProgress;

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/eamobile/download/DownloadProgress$FileProgress;-><init>(Lcom/eamobile/download/DownloadProgress;JJ)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    .line 47
    iget-object v0, p0, Lcom/eamobile/download/DownloadProgress;->progressMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object v6, p0, Lcom/eamobile/download/DownloadProgress;->currentFileProgress:Lcom/eamobile/download/DownloadProgress$FileProgress;

    goto :goto_0
.end method
