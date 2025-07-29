.class Lcom/ea/blast/MainView$ConfigChooser;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGlApi:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I
    .param p7, "glapi"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    .line 106
    iput p1, p0, Lcom/ea/blast/MainView$ConfigChooser;->mRedSize:I

    .line 107
    iput p2, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGreenSize:I

    .line 108
    iput p3, p0, Lcom/ea/blast/MainView$ConfigChooser;->mBlueSize:I

    .line 109
    iput p4, p0, Lcom/ea/blast/MainView$ConfigChooser;->mAlphaSize:I

    .line 110
    iput p5, p0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    .line 111
    iput p6, p0, Lcom/ea/blast/MainView$ConfigChooser;->mStencilSize:I

    .line 112
    iput p7, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    .line 113
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 209
    :goto_0
    return v0

    :cond_0
    move v0, p5

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 122
    const/16 v0, 0x9

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 133
    .local v2, "s_configAttribs":[I
    iget v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    if-ne v0, v7, :cond_0

    .line 134
    aput v7, v2, v7

    .line 135
    :cond_0
    iget v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 136
    const/4 v0, 0x4

    aput v0, v2, v7

    .line 139
    :cond_1
    new-array v5, v7, [I

    .line 140
    .local v5, "num_config":[I
    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 142
    aget v4, v5, v4

    .line 144
    .local v4, "numConfigs":I
    if-gtz v4, :cond_2

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v0, p1

    move-object v1, p2

    .line 151
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 157
    invoke-virtual {p0, p1, p2, v3}, Lcom/ea/blast/MainView$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 158
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-eqz v6, :cond_3

    .line 159
    const-string v0, "EAMCore/MainView"

    invoke-static {v0, p1, p2, v6}, Lcom/ea/blast/EglUtils;->PrintConfig(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 160
    :cond_3
    return-object v6

    .line 122
    :array_0
    .array-data 4
        0x3040
        0x0
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3038
    .end array-data
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 18
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 166
    const/4 v11, 0x0

    .line 168
    .local v11, "bestCompatibleConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_0
    :goto_0
    if-nez v11, :cond_5

    .line 170
    move-object/from16 v9, p3

    .local v9, "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    if-ge v14, v15, :cond_3

    aget-object v5, v9, v14

    .line 172
    .local v5, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 173
    .local v12, "d":I
    const/16 v6, 0x3026

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 176
    .local v17, "s":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    move v2, v0

    if-lt v12, v2, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mStencilSize:I

    move v2, v0

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_2

    .line 170
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 179
    :cond_2
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v16

    .line 180
    .local v16, "r":I
    const/16 v6, 0x3023

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 181
    .local v13, "g":I
    const/16 v6, 0x3022

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 182
    .local v10, "b":I
    const/16 v6, 0x3021

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 185
    .local v8, "a":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mRedSize:I

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mGreenSize:I

    move v2, v0

    if-ne v13, v2, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mBlueSize:I

    move v2, v0

    if-ne v10, v2, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mAlphaSize:I

    move v2, v0

    if-ne v8, v2, :cond_1

    .line 187
    move-object v11, v5

    .line 192
    .end local v5    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8    # "a":I
    .end local v10    # "b":I
    .end local v12    # "d":I
    .end local v13    # "g":I
    .end local v16    # "r":I
    .end local v17    # "s":I
    :cond_3
    if-nez v11, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    move v2, v0

    if-lez v2, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    move v2, v0

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    goto/16 :goto_0

    .line 197
    :cond_4
    const/4 v2, 0x0

    .line 201
    .end local v9    # "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    :goto_2
    return-object v2

    :cond_5
    move-object v2, v11

    goto :goto_2
.end method
