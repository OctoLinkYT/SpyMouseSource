.class Lcom/eamobile/download/LocalZipExtractorEvent;
.super Ljava/lang/Object;
.source "LocalZipExtractorEvent.java"

# interfaces
.implements Lcom/eamobile/download/IZipExtractorEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onExtractEntryFinish()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "LocalZipExtractorEvent.onExtractEntryFinish"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onExtractEntryStart(Ljava/lang/String;J)V
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "compressedSize"    # J

    .prologue
    .line 12
    const-string v0, "LocalZipExtractorEvent.onExtractEntryStart"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public onReportProgress(I)V
    .locals 0
    .param p1, "compressedCurrentSize"    # I

    .prologue
    .line 23
    return-void
.end method
