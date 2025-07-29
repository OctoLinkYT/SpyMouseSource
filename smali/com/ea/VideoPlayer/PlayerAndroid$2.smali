.class Lcom/ea/VideoPlayer/PlayerAndroid$2;
.super Ljava/lang/Object;
.source "PlayerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/VideoPlayer/PlayerAndroid;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/VideoPlayer/PlayerAndroid;


# direct methods
.method constructor <init>(Lcom/ea/VideoPlayer/PlayerAndroid;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ea/VideoPlayer/PlayerAndroid$2;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid$2;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v0, v0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->start()V

    .line 120
    return-void
.end method
