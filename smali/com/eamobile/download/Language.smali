.class public Lcom/eamobile/download/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final ASCII:I = 0x1

.field public static final BTN_3G:I = 0x17

.field public static final BTN_DOWNLOAD:I = 0x5

.field public static final BTN_EXIT:I = 0x6

.field public static final BTN_NO:I = 0x12

.field public static final BTN_OK:I = 0x2

.field public static final BTN_RETRY:I = 0xe

.field public static final BTN_RETRY_TITLE:I = 0xd

.field public static final BTN_WIFI:I = 0x10

.field public static final BTN_YES:I = 0x11

.field public static final CHECK_UPDATES_MSG:I = 0x16

.field public static final CHECK_UPDATES_TITLE:I = 0x15

.field public static final DEBUG_DOWNLOAD_TITLE:I = 0x20

.field public static final DOWNLOADING_MSG:I = 0x14

.field public static final DOWNLOADING_TITLE:I = 0x13

.field public static final DOWNLOAD_MSG:I = 0x1

.field public static final DOWNLOAD_PROGRESS:I = 0xf

.field public static final DOWNLOAD_TITLE:I = 0x0

.field public static final END_OF_LINE:C = '\n'

.field public static final FAILED_MSG:I = 0xc

.field public static final FAILED_TITLE:I = 0xb

.field private static final NB_STRINGS:I = 0x21

.field public static final NETWORK_WARNING_TXT:I = 0x18

.field public static final NW_UNAVAIL:I = 0x9

.field public static final NW_UNAVAIL_MSG:I = 0xa

.field public static final PRESS_BACK_FOR_3G:I = 0x1e

.field public static final PRESS_BACK_FOR_WIFI:I = 0x1d

.field public static final PRESS_BTN_3G_FOR_3G:I = 0x1f

.field public static final SPACE_UNAVAIL_MSG:I = 0x4

.field public static final SPACE_UNAVAIL_TITLE:I = 0x3

.field public static final UNICODE:I = 0x2

.field public static final UNSUPPORTED_DEVICE_TITLE:I = 0x1b

.field public static final UNSUPPORTED_DEVICE_TXT:I = 0x1c

.field public static final UPDATES_FOUND_TITLE:I = 0x19

.field public static final UPDATES_FOUND_TXT:I = 0x1a

.field public static final WIFI_MSG:I = 0x8

.field public static final WIFI_TITLE:I = 0x7

.field private static fileType:I

.field public static final strings:[Ljava/lang/String;


# instance fields
.field public final BUFFER_SIZE:I

.field private curLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/eamobile/download/Language;->strings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x1fa0

    iput v0, p0, Lcom/eamobile/download/Language;->BUFFER_SIZE:I

    return-void
.end method

.method public static determineFileType(Ljava/lang/String;)I
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v3, 0x1

    .line 202
    .local v3, "fileType":I
    const/4 v0, 0x0

    .line 204
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getInstance()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 206
    .local v2, "fileHeader":I
    const v4, 0xfffe

    if-ne v2, v4, :cond_0

    .line 207
    const/4 v3, 0x2

    .line 213
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    const/4 v0, 0x0

    .line 218
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "fileHeader":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return v3

    .line 215
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "fileHeader":I
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 217
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_0

    .line 209
    .end local v2    # "fileHeader":I
    :catch_1
    move-exception v4

    .line 213
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 214
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v4

    .line 213
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_3
    throw v4

    .line 215
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    .line 212
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 209
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
    .line 222
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eamobile/download/Language;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "id"    # I
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 228
    const-string v0, "%%"

    .line 229
    .local v0, "PARAMETER_STR":Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, "cpt":I
    sget-object v5, Lcom/eamobile/download/Language;->strings:[Ljava/lang/String;

    aget-object v4, v5, p0

    .line 236
    .local v4, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    array-length v5, p1

    if-lez v5, :cond_0

    .line 237
    :goto_0
    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 239
    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 240
    .local v3, "position":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v3    # "position":I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
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
    .line 193
    sget v1, Lcom/eamobile/download/Language;->fileType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 194
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 195
    .local v0, "value":I
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-char v1, v1

    .line 197
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
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/eamobile/download/Language;->readChar(Ljava/io/DataInput;)C

    move-result v2

    .line 172
    .local v2, "next":C
    :goto_0
    if-eq v2, p1, :cond_0

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    invoke-static {p0}, Lcom/eamobile/download/Language;->readChar(Ljava/io/DataInput;)C

    move-result v2

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "fullString":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 179
    .local v3, "trimString":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 178
    .end local v3    # "trimString":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object v3, v4

    goto :goto_1
.end method


# virtual methods
.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/eamobile/download/Language;->curLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public loadStrings(Ljava/lang/String;)Z
    .locals 13
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tloadString("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 82
    const/4 v4, 0x0

    .line 85
    .local v4, "is":Ljava/io/InputStream;
    if-nez p1, :cond_0

    move v8, v10

    .line 150
    :goto_0
    return v8

    .line 88
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadcontent/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "filename":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tOpening file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 93
    :try_start_0
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getInstance()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 95
    if-nez v4, :cond_2

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tCouldn\'t find file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v4, :cond_1

    .line 142
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 143
    const/4 v4, 0x0

    :cond_1
    :goto_1
    move v8, v10

    .line 144
    goto :goto_0

    .line 101
    :cond_2
    :try_start_2
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 102
    .local v7, "stringsVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-static {v2}, Lcom/eamobile/download/Language;->determineFileType(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/eamobile/download/Language;->fileType:I

    .line 104
    sget v8, Lcom/eamobile/download/Language;->fileType:I

    if-ne v8, v12, :cond_3

    .line 106
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_3
    const/4 v5, 0x1

    .line 110
    .local v5, "more":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 114
    const/16 v8, 0xa

    const/4 v9, 0x1

    :try_start_3
    invoke-static {v0, v8, v9}, Lcom/eamobile/download/Language;->readTo(Ljava/io/DataInput;CZ)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 117
    .end local v6    # "string":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 120
    goto :goto_2

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v3, 0x0

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v3, "i":I
    :goto_3
    :try_start_4
    sget-object v8, Lcom/eamobile/download/Language;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_5

    .line 124
    sget-object v8, Lcom/eamobile/download/Language;->strings:[Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 139
    :cond_5
    if-eqz v4, :cond_6

    .line 142
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 143
    const/4 v4, 0x0

    .line 148
    :cond_6
    :goto_4
    iput-object p1, p0, Lcom/eamobile/download/Language;->curLanguage:Ljava/lang/String;

    move v8, v11

    .line 150
    goto/16 :goto_0

    .line 128
    .end local v3    # "i":I
    .end local v5    # "more":Z
    .end local v7    # "stringsVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 130
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tFile not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    if-eqz v4, :cond_7

    .line 142
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 143
    const/4 v4, 0x0

    :cond_7
    :goto_5
    move v8, v10

    .line 144
    goto/16 :goto_0

    .line 133
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tException caught: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 139
    if-eqz v4, :cond_8

    .line 142
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 143
    const/4 v4, 0x0

    :cond_8
    :goto_6
    move v8, v10

    .line 144
    goto/16 :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_9

    .line 142
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 143
    const/4 v4, 0x0

    .line 144
    :cond_9
    :goto_7
    throw v8

    :catch_3
    move-exception v8

    goto/16 :goto_1

    .restart local v3    # "i":I
    .restart local v5    # "more":Z
    .restart local v7    # "stringsVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_4
    move-exception v8

    goto :goto_4

    .end local v3    # "i":I
    .end local v5    # "more":Z
    .end local v7    # "stringsVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    goto :goto_5

    .local v1, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v8

    goto :goto_6

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    goto :goto_7
.end method
