.class Lcom/ea/spymouse_na/ContentDownloadRenderer;
.super Ljava/lang/Object;
.source "SpyMouseActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field glContext:Ljavax/microedition/khronos/opengles/GL10;

.field mainActivity:Lcom/ea/spymouse_na/SpyMouseActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    check-cast p1, Lcom/ea/spymouse_na/SpyMouseActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ea/spymouse_na/ContentDownloadRenderer;->mainActivity:Lcom/ea/spymouse_na/SpyMouseActivity;

    .line 154
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 168
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 164
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ea/spymouse_na/ContentDownloadRenderer;->mainActivity:Lcom/ea/spymouse_na/SpyMouseActivity;

    invoke-virtual {v0, p1}, Lcom/ea/spymouse_na/SpyMouseActivity;->startDownloadActivity(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 159
    iput-object p1, p0, Lcom/ea/spymouse_na/ContentDownloadRenderer;->glContext:Ljavax/microedition/khronos/opengles/GL10;

    .line 160
    return-void
.end method
