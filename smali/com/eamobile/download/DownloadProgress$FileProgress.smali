.class Lcom/eamobile/download/DownloadProgress$FileProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eamobile/download/DownloadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileProgress"
.end annotation


# instance fields
.field public downloaded:J

.field final synthetic this$0:Lcom/eamobile/download/DownloadProgress;

.field public total:J


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadProgress;JJ)V
    .locals 0
    .param p2, "d"    # J
    .param p4, "t"    # J

    .prologue
    .line 13
    iput-object p1, p0, Lcom/eamobile/download/DownloadProgress$FileProgress;->this$0:Lcom/eamobile/download/DownloadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p2, p0, Lcom/eamobile/download/DownloadProgress$FileProgress;->downloaded:J

    .line 15
    iput-wide p4, p0, Lcom/eamobile/download/DownloadProgress$FileProgress;->total:J

    .line 16
    return-void
.end method
