.class public final Lcom/meizu/common/widget/MzContactsContract$MzSettings;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Lcom/meizu/common/widget/MzContactsContract$MzSettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzSettings"
.end annotation


# static fields
.field public static final CONTENT_NOTIFY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 546
    sget-object v0, Lcom/meizu/common/widget/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzSettings;->CONTENT_NOTIFY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    return-void
.end method
