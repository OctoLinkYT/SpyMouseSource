.class public Lcom/ea/blast/MainView;
.super Landroid/opengl/GLSurfaceView;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/MainView$1;,
        Lcom/ea/blast/MainView$ConfigChooser;,
        Lcom/ea/blast/MainView$ContextFactory20;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/MainView"


# instance fields
.field private mActivity:Lcom/ea/blast/MainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    check-cast p1, Lcom/ea/blast/MainActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    .line 33
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/ea/blast/MainView;->init(ZIII)V

    .line 34
    return-void
.end method

.method private init(ZIII)V
    .locals 8
    .param p1, "translucent"    # Z
    .param p2, "depth"    # I
    .param p3, "stencil"    # I
    .param p4, "glapi"    # I

    .prologue
    const/4 v5, 0x5

    const/16 v1, 0x8

    .line 58
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/ea/blast/MainView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 63
    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 68
    new-instance v0, Lcom/ea/blast/MainView$ContextFactory20;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ea/blast/MainView$ContextFactory20;-><init>(Lcom/ea/blast/MainView$1;)V

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/ea/blast/MainView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;-><init>(IIIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 80
    new-instance v0, Lcom/ea/blast/AndroidRenderer;

    iget-object v1, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    invoke-direct {v0, v1}, Lcom/ea/blast/AndroidRenderer;-><init>(Lcom/ea/blast/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 81
    return-void

    .line 76
    :cond_2
    new-instance v0, Lcom/ea/blast/MainView$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move v1, v5

    move v3, v5

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;-><init>(IIIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "EAMCore/MainView"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
