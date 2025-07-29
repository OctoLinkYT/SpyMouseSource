.class public Lcom/ea/EAMAudio/EAMAudioCoreWrapper;
.super Ljava/lang/Object;
.source "EAMAudioCoreWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native NativePause()V
.end method

.method public static native NativeResume()V
.end method

.method public static native NativeShutdown()V
.end method

.method public static native NativeStartup()V
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup()V

    .line 16
    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativeStartup()V

    .line 17
    return-void
.end method

.method public static pause()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativePause()V

    .line 30
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Shutdown()V

    .line 31
    return-void
.end method

.method public static resume()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup()V

    .line 37
    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativeResume()V

    .line 38
    return-void
.end method

.method public static shutdown()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativeShutdown()V

    .line 23
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Shutdown()V

    .line 24
    return-void
.end method
