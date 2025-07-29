.class Lcom/eamobile/download/DownloadFileData;
.super Ljava/lang/Object;
.source "DownloadFileData.java"


# static fields
.field static final FILE_TYPE_CHECKSUMS:I = 0x2

.field static final FILE_TYPE_OTHER:I = 0x3

.field static final FILE_TYPE_ZIP:I = 0x1


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileURL:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private size:I

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "fileURL"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/eamobile/download/DownloadFileData;->fileName:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/eamobile/download/DownloadFileData;->size:I

    .line 20
    iput-object p3, p0, Lcom/eamobile/download/DownloadFileData;->version:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/eamobile/download/DownloadFileData;->language:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/eamobile/download/DownloadFileData;->fileURL:Ljava/lang/String;

    .line 23
    iput p6, p0, Lcom/eamobile/download/DownloadFileData;->type:I

    .line 24
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/eamobile/download/DownloadFileData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eamobile/download/DownloadFileData;->fileURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eamobile/download/DownloadFileData;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/eamobile/download/DownloadFileData;->size:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/eamobile/download/DownloadFileData;->type:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/eamobile/download/DownloadFileData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/eamobile/download/DownloadFileData;->fileName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setFileURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileURL"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/eamobile/download/DownloadFileData;->fileURL:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/eamobile/download/DownloadFileData;->language:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/eamobile/download/DownloadFileData;->size:I

    .line 44
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/eamobile/download/DownloadFileData;->type:I

    .line 84
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/eamobile/download/DownloadFileData;->version:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eamobile/download/DownloadFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eamobile/download/DownloadFileData;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadFileData;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadFileData;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadFileData;->fileURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eamobile/download/DownloadFileData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
