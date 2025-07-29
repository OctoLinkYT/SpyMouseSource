.class public Lcom/ea/RWAudioCore/AndroidRWAudioCore;
.super Ljava/lang/Object;
.source "AndroidRWAudioCore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Shutdown()V

    .line 29
    return-void
.end method

.method public static Startup()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x2

    .line 18
    .local v0, "channels":I
    invoke-static {v0}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup(I)V

    .line 19
    return-void
.end method
