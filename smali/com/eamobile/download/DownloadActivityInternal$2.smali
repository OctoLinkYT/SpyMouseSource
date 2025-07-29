.class final Lcom/eamobile/download/DownloadActivityInternal$2;
.super Ljava/lang/Object;
.source "DownloadActivityInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/DownloadActivityInternal;->resumeState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/DownloadActivityInternal;


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadActivityInternal;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/eamobile/download/DownloadActivityInternal$2;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    const-string v0, "DownloadActivityInternal resumeState - Making a new runnable to resume."

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 645
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal$2;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-static {v0}, Lcom/eamobile/download/DownloadActivityInternal;->access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeState: pCurrentView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal$2;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-static {v1}, Lcom/eamobile/download/DownloadActivityInternal;->access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 648
    const-string v0, "resumeState: before calling pCurrentView.resume()"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal$2;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-static {v0}, Lcom/eamobile/download/DownloadActivityInternal;->access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/CustomView;->resume()V

    .line 650
    const-string v0, "resumeState: after calling pCurrentView.resume()"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 652
    const-string v0, "resumeState: after calling setContentView"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 654
    :cond_0
    return-void
.end method
