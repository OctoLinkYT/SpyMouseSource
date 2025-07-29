.class Lcom/ea/spymouse_na/SpyMouseActivity$1$1;
.super Ljava/lang/Object;
.source "SpyMouseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/spymouse_na/SpyMouseActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/spymouse_na/SpyMouseActivity$1;


# direct methods
.method constructor <init>(Lcom/ea/spymouse_na/SpyMouseActivity$1;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1$1;->this$1:Lcom/ea/spymouse_na/SpyMouseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-static {v1}, Lcom/ea/spymouse_na/SpyMouseActivity;->access$002(Lcom/ea/spymouse_na/ContentDownloadRenderer;)Lcom/ea/spymouse_na/ContentDownloadRenderer;

    .line 116
    iget-object v0, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1$1;->this$1:Lcom/ea/spymouse_na/SpyMouseActivity$1;

    iget-object v0, v0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    invoke-static {v0, v1}, Lcom/ea/spymouse_na/SpyMouseActivity;->access$102(Lcom/ea/spymouse_na/SpyMouseActivity;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    .line 117
    return-void
.end method
