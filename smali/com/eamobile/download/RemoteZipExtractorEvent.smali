.class Lcom/eamobile/download/RemoteZipExtractorEvent;
.super Ljava/lang/Object;
.source "RemoteZipExtractorEvent.java"

# interfaces
.implements Lcom/eamobile/download/IZipExtractorEvent;


# instance fields
.field private downloadProgress:Lcom/eamobile/download/DownloadProgress;

.field private zipFileData:Lcom/eamobile/download/DownloadFileData;


# direct methods
.method public constructor <init>(Lcom/eamobile/download/DownloadProgress;Lcom/eamobile/download/DownloadFileData;)V
    .locals 0
    .param p1, "downloadProgress"    # Lcom/eamobile/download/DownloadProgress;
    .param p2, "zipFileData"    # Lcom/eamobile/download/DownloadFileData;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/eamobile/download/RemoteZipExtractorEvent;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    .line 11
    iput-object p2, p0, Lcom/eamobile/download/RemoteZipExtractorEvent;->zipFileData:Lcom/eamobile/download/DownloadFileData;

    .line 12
    return-void
.end method


# virtual methods
.method public onExtractEntryFinish()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "RemoteZipExtractorEvent.onExtractEntryFinish"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/eamobile/download/RemoteZipExtractorEvent;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadProgress;->fillCurrentFileDownload(Z)V

    .line 27
    return-void
.end method

.method public onExtractEntryStart(Ljava/lang/String;J)V
    .locals 3
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "compressedSize"    # J

    .prologue
    .line 16
    const-string v1, "RemoteZipExtractorEvent.onExtractEntryStart"

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "z_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eamobile/download/RemoteZipExtractorEvent;->zipFileData:Lcom/eamobile/download/DownloadFileData;

    invoke-virtual {v2}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/eamobile/download/RemoteZipExtractorEvent;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    invoke-virtual {v1, v0, p2, p3}, Lcom/eamobile/download/DownloadProgress;->setCurrentFile(Ljava/lang/String;J)V

    .line 20
    return-void
.end method

.method public onReportProgress(I)V
    .locals 4
    .param p1, "compressedCurrentSize"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/eamobile/download/RemoteZipExtractorEvent;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    int-to-long v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/eamobile/download/DownloadProgress;->reportProgress(JZ)V

    .line 32
    return-void
.end method
