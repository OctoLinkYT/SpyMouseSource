.class final Lcom/eamobile/download/DownloadActivityInternal$1;
.super Ljava/lang/Object;
.source "DownloadActivityInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V
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
    .line 558
    iput-object p1, p0, Lcom/eamobile/download/DownloadActivityInternal$1;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 561
    const-string v0, "DownloadActivityInternal setState - Making a new runnable to init."

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal$1;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-static {v0}, Lcom/eamobile/download/DownloadActivityInternal;->access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->access$000()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/eamobile/download/DownloadActivityInternal$1$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DownloadActivityInternal$1$1;-><init>(Lcom/eamobile/download/DownloadActivityInternal$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 578
    :cond_0
    return-void
.end method
