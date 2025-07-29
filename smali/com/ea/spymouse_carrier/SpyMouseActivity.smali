.class public Lcom/ea/spymouse_carrier/SpyMouseActivity;
.super Lcom/ea/blast/MainActivity;
.source "SpyMouseActivity.java"

# interfaces
.implements Lcom/eamobile/download/IDownloadActivity;


# static fields
.field private static DATA_FOLDER:Ljava/lang/String;

.field private static renderer:Lcom/ea/spymouse_carrier/ContentDownloadRenderer;

.field static staticMe:Lcom/ea/spymouse_carrier/SpyMouseActivity;


# instance fields
.field private activity:Lcom/eamobile/download/DownloadActivity;

.field private carrierDrm:Lcom/eamobile/drm/CarrierDRM;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->staticMe:Lcom/ea/spymouse_carrier/SpyMouseActivity;

    .line 35
    const-string v0, "SpyMouse"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->DATA_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ea/spymouse_carrier/ContentDownloadRenderer;)Lcom/ea/spymouse_carrier/ContentDownloadRenderer;
    .locals 0
    .param p0, "x0"    # Lcom/ea/spymouse_carrier/ContentDownloadRenderer;

    .prologue
    .line 29
    sput-object p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->renderer:Lcom/ea/spymouse_carrier/ContentDownloadRenderer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ea/spymouse_carrier/SpyMouseActivity;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;
    .locals 0
    .param p0, "x0"    # Lcom/ea/spymouse_carrier/SpyMouseActivity;
    .param p1, "x1"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    sput-object p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->staticMe:Lcom/ea/spymouse_carrier/SpyMouseActivity;

    .line 48
    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/ea/spymouse_carrier/BogoMIPSReader;->readBogoMIPS()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/spymouse_carrier/SpyMouseActivity;->setRequestedOrientation(I)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/spymouse_carrier/SpyMouseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->DATA_FOLDER:Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/ea/rwfilesystem/rwfilesystem;->Startup(Landroid/app/Activity;)V

    .line 55
    iget-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 56
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 57
    new-instance v0, Lcom/ea/spymouse_carrier/ContentDownloadRenderer;

    invoke-direct {v0, p0}, Lcom/ea/spymouse_carrier/ContentDownloadRenderer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->renderer:Lcom/ea/spymouse_carrier/ContentDownloadRenderer;

    .line 58
    iget-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    sget-object v1, Lcom/ea/spymouse_carrier/SpyMouseActivity;->renderer:Lcom/ea/spymouse_carrier/ContentDownloadRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 59
    iget-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v0, Lcom/eamobile/download/DownloadActivity;

    invoke-direct {v0, p0}, Lcom/eamobile/download/DownloadActivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->activity:Lcom/eamobile/download/DownloadActivity;

    .line 62
    iget-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->activity:Lcom/eamobile/download/DownloadActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ea/spymouse_carrier/SpyMouseActivity;->DATA_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eamobile/download/DownloadActivity;->setAssetPath(Ljava/lang/String;Z)V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->handler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/eamobile/drm/CarrierDRM;

    sget-object v1, Lcom/ea/spymouse_carrier/SpyMouseActivity;->staticMe:Lcom/ea/spymouse_carrier/SpyMouseActivity;

    invoke-direct {v0, p0, v1}, Lcom/eamobile/drm/CarrierDRM;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->carrierDrm:Lcom/eamobile/drm/CarrierDRM;

    .line 67
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Init(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 68
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup()V

    .line 69
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/ea/VideoPlayer/PlayerAndroid;->Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->staticMe:Lcom/ea/spymouse_carrier/SpyMouseActivity;

    .line 76
    invoke-static {}, Lcom/ea/VideoPlayer/PlayerAndroid;->Shutdown()V

    .line 77
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Shutdown()V

    .line 78
    invoke-static {}, Lcom/ea/rwfilesystem/rwfilesystem;->Shutdown()V

    .line 79
    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onDestroy()V

    .line 80
    return-void
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 5
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    const/4 v4, 0x0

    .line 85
    const-string v1, "SpyMouse.java"

    const-string v2, "onResult"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 88
    const-string v1, "SpyMouse.java"

    const-string v2, "SUCCESS!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/ea/spymouse_carrier/SpyMouseActivity$1;

    invoke-direct {v0, p0}, Lcom/ea/spymouse_carrier/SpyMouseActivity$1;-><init>(Lcom/ea/spymouse_carrier/SpyMouseActivity;)V

    .line 122
    .local v0, "displayUpdate":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    .end local v0    # "displayUpdate":Ljava/lang/Runnable;
    :goto_0
    iget-object v1, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->activity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivity;->destroyDownloadActvity()V

    .line 132
    iput-object v4, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->activity:Lcom/eamobile/download/DownloadActivity;

    .line 133
    return-void

    .line 126
    :cond_0
    const-string v1, "SpyMouse.java"

    const-string v2, "FAILURE."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v1, Lcom/ea/spymouse_carrier/SpyMouseActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1}, Lcom/ea/blast/MainActivity;->finish()V

    .line 128
    sput-object v4, Lcom/ea/spymouse_carrier/SpyMouseActivity;->instance:Lcom/ea/blast/MainActivity;

    .line 129
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onWindowFocusChanged(Z)V

    .line 141
    if-eqz p1, :cond_0

    sget-object v0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->staticMe:Lcom/ea/spymouse_carrier/SpyMouseActivity;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/eamobile/drm/CarrierDRM;->onResume()V

    .line 143
    :cond_0
    return-void
.end method

.method public startDownloadActivity(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ea/spymouse_carrier/SpyMouseActivity;->activity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v0, p0, p0, p0, p1}, Lcom/eamobile/download/DownloadActivity;->init(Landroid/app/Activity;Lcom/eamobile/download/IDownloadActivity;Landroid/content/Context;Ljava/lang/Object;)V

    .line 137
    return-void
.end method
