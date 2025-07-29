.class public Lcom/ea/rwfilesystem/rwfilesystem;
.super Ljava/lang/Object;
.source "rwfilesystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Shutdown()V
.end method

.method public static Startup(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 28
    .local v1, "fileRoot":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 29
    .local v0, "externalRoot":Ljava/io/File;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Java StartupNativeImpl"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ea/rwfilesystem/rwfilesystem;->StartupNativeImpl(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Java Ended StartupNativeImpl"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static native StartupNativeImpl(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
.end method
