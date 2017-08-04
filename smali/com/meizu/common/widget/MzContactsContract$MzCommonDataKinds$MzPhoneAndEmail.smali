.class public final Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzPhoneAndEmail"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_email"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_email"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 458
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones_emails"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    .line 467
    sget-object v0, Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 469
    sget-object v0, Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_GROUP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    return-void
.end method
