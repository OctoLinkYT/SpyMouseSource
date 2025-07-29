.class public Lcom/ea/EAAudioCore/AndroidEAAudioCore;
.super Ljava/lang/Object;
.source "AndroidEAAudioCore.java"


# static fields
.field public static sAudioTrack:Landroid/media/AudioTrack;

.field private static sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Init(Landroid/media/AudioTrack;III)V
.end method

.method private static native Release()V
.end method

.method public static Shutdown()V
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 114
    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 116
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Release()V

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    .line 119
    :cond_0
    return-void
.end method

.method public static Startup()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    .line 42
    .local v0, "channels":I
    invoke-static {v0}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup(I)V

    .line 43
    return-void
.end method

.method public static Startup(I)V
    .locals 8
    .param p0, "channels"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 48
    sget-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-nez v0, :cond_2

    .line 51
    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 52
    const/4 p0, 0x2

    .line 54
    :cond_0
    invoke-static {v1}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v2

    .line 56
    .local v2, "samplerate":I
    const/4 v3, 0x3

    .line 57
    .local v3, "channelConfig":I
    if-ne p0, v6, :cond_1

    .line 58
    const/4 v3, 0x2

    .line 60
    :cond_1
    const/4 v4, 0x2

    .line 61
    .local v4, "format":I
    const/4 v7, 0x2

    .line 63
    .local v7, "sizeofShort":I
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 65
    .local v5, "bufsize":I
    new-instance v0, Landroid/media/AudioTrack;

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    .line 68
    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    mul-int v1, v7, p0

    div-int v1, v5, v1

    invoke-static {v0, v1, p0, v2}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Init(Landroid/media/AudioTrack;III)V

    .line 70
    sput-boolean v6, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    .line 72
    .end local v2    # "samplerate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "format":I
    .end local v5    # "bufsize":I
    .end local v7    # "sizeofShort":I
    :cond_2
    return-void
.end method
