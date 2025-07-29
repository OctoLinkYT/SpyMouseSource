.class public Lcom/eamobile/drm/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final ASCII:I = 0x1

.field public static final BTN_OK:I = 0x2

.field public static final DRM_MSG:I = 0x1

.field public static final DRM_TITLE:I = 0x0

.field public static final END_OF_LINE:C = '\n'

.field private static final NB_STRINGS:I = 0x3

.field public static final UNICODE:I = 0x2

.field private static fileType:I

.field public static final strings:[Ljava/lang/String;


# instance fields
.field public final BUFFER_SIZE:I

.field private curLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/eamobile/drm/Language;->strings:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x1fa0

    iput v0, p0, Lcom/eamobile/drm/Language;->BUFFER_SIZE:I

    .line 15
    return-void
.end method

.method public static determineFileType(Ljava/lang/String;)I
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v3, 0x1

    .line 161
    .local v3, "fileType":I
    const/4 v0, 0x0

    .line 163
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-static {}, Lcom/eamobile/drm/CarrierDRM;->getInstance()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 165
    .local v2, "fileHeader":I
    const v4, 0xfffe

    if-ne v2, v4, :cond_0

    .line 166
    const/4 v3, 0x2

    .line 172
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    const/4 v0, 0x0

    .line 177
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "fileHeader":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return v3

    .line 168
    :catch_0
    move-exception v4

    .line 172
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 173
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v4

    .line 172
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_3
    throw v4

    .line 174
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "fileHeader":I
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_0

    .end local v2    # "fileHeader":I
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 170
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 168
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eamobile/drm/Language;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "%%"

    .line 188
    .local v0, "PARAMETER_STR":Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, "cpt":I
    sget-object v4, Lcom/eamobile/drm/Language;->strings:[Ljava/lang/String;

    aget-object v3, v4, p0

    .line 195
    .local v3, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    array-length v4, p1

    if-lez v4, :cond_0

    .line 196
    :goto_0
    const-string v4, "%%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    array-length v4, p1

    if-lt v1, v4, :cond_1

    .line 207
    :cond_0
    :goto_1
    return-object v3

    .line 198
    :cond_1
    const-string v4, "%%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, "position":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v2    # "position":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static readChar(Ljava/io/DataInput;)C
    .locals 3
    .param p0, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    sget v1, Lcom/eamobile/drm/Language;->fileType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 153
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 154
    .local v0, "value":I
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-char v1, v1

    .line 156
    .end local v0    # "value":I
    :goto_0
    return v1

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    int-to-char v1, v1

    goto :goto_0
.end method

.method public static readTo(Ljava/io/DataInput;CZ)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/io/DataInput;
    .param p1, "delimiter"    # C
    .param p2, "isFormatted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/eamobile/drm/Language;->readChar(Ljava/io/DataInput;)C

    move-result v2

    .line 131
    .local v2, "next":C
    :goto_0
    if-ne v2, p1, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "fullString":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 138
    .local v3, "trimString":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 132
    .end local v1    # "fullString":Ljava/lang/String;
    .end local v3    # "trimString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    invoke-static {p0}, Lcom/eamobile/drm/Language;->readChar(Ljava/io/DataInput;)C

    move-result v2

    goto :goto_0

    .line 137
    .restart local v1    # "fullString":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object v3, v4

    goto :goto_1
.end method


# virtual methods
.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/eamobile/drm/Language;->curLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public loadStrings(Ljava/lang/String;)Z
    .locals 13
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    if-nez p1, :cond_0

    move v8, v10

    .line 109
    :goto_0
    return v8

    .line 56
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "multilang/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/eamobile/drm/CarrierDRM;->getInstance()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 63
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1

    move v8, v10

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 70
    .local v7, "stringsVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-static {v2}, Lcom/eamobile/drm/Language;->determineFileType(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/eamobile/drm/Language;->fileType:I

    .line 72
    sget v8, Lcom/eamobile/drm/Language;->fileType:I

    if-ne v8, v12, :cond_2

    .line 74
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 77
    :cond_2
    const/4 v5, 0x1

    .line 78
    .local v5, "more":Z
    :goto_1
    if-nez v5, :cond_3

    .line 90
    const/4 v3, 0x0

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v3, "i":I
    :goto_2
    sget-object v8, Lcom/eamobile/drm/Language;->strings:[Ljava/lang/String;

    array-length v8, v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lt v3, v8, :cond_4

    .line 107
    iput-object p1, p0, Lcom/eamobile/drm/Language;->curLanguage:Ljava/lang/String;

    move v8, v11

    .line 109
    goto :goto_0

    .line 82
    .end local v3    # "i":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :cond_3
    const/16 v8, 0xa

    const/4 v9, 0x1

    :try_start_1
    invoke-static {v0, v8, v9}, Lcom/eamobile/drm/Language;->readTo(Ljava/io/DataInput;CZ)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 85
    .end local v6    # "string":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 92
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_4
    :try_start_2
    sget-object v8, Lcom/eamobile/drm/Language;->strings:[Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "more":Z
    .end local v7    # "stringsVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    move-object v1, v8

    .local v1, "e":Ljava/io/FileNotFoundException;
    move v8, v10

    .line 99
    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .local v1, "e":Ljava/lang/Exception;
    move v8, v10

    .line 104
    goto :goto_0
.end method
