.class public Lcom/meizu/common/app/PermissionDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "PermissionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    }
.end annotation


# static fields
.field private static mPermissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private atsClazz:Ljava/lang/Class;

.field private clazz:Ljava/lang/Class;

.field private isPerformanceTestMethod:Ljava/lang/reflect/Method;

.field private isProductInternationalMethod:Ljava/lang/reflect/Method;

.field private isShopDemoVersionMethod:Ljava/lang/reflect/Method;

.field private mContext:Landroid/content/Context;

.field private mFormatString:Ljava/lang/String;

.field private mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/app/PermissionDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    .line 36
    iput-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternationalMethod:Ljava/lang/reflect/Method;

    .line 37
    iput-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    .line 38
    iput-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTestMethod:Ljava/lang/reflect/Method;

    .line 39
    iput-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemoVersionMethod:Ljava/lang/reflect/Method;

    .line 59
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_permission_dialog_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 65
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mView:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->mc_pm_textView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mTextView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_permission_message_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mFormatString:Ljava/lang/String;

    .line 69
    sget v0, Lcom/meizu/common/R$string;->mc_allow:I

    new-instance v1, Lcom/meizu/common/app/PermissionDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/PermissionDialogBuilder$1;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/app/PermissionDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    sget v0, Lcom/meizu/common/R$string;->mc_reject:I

    new-instance v1, Lcom/meizu/common/app/PermissionDialogBuilder$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/PermissionDialogBuilder$2;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/app/PermissionDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    new-instance v0, Lcom/meizu/common/app/PermissionDialogBuilder$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/PermissionDialogBuilder$3;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/PermissionDialogBuilder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/app/PermissionDialogBuilder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/PermissionDialogBuilder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strAry"    # [Ljava/lang/String;
    .param p2, "join"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 165
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 173
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v2

    .line 166
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 169
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/meizu/common/app/PermissionDialogBuilder$5;

    invoke-direct {v1, p0, v0}, Lcom/meizu/common/app/PermissionDialogBuilder$5;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 207
    return-object v0
.end method

.method public isPerformanceTest()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    const-string/jumbo v2, "getBoolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTestMethod:Ljava/lang/reflect/Method;

    .line 254
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTestMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "debug.perf.applunch"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "android.os.SystemProperties"

    .line 251
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->atsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    return v6
.end method

.method public isProductInternational()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const-string/jumbo v2, "isProductInternational"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternationalMethod:Ljava/lang/reflect/Method;

    .line 228
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternationalMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "android.os.BuildExt"

    .line 225
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    return v4
.end method

.method public isShopDemo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const-string/jumbo v2, "isShopDemoVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemoVersionMethod:Ljava/lang/reflect/Method;

    .line 241
    iget-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemoVersionMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "android.os.BuildExt"

    .line 238
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    return v4
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/common/app/PermissionDialogBuilder$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/PermissionDialogBuilder$4;-><init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public setMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionStrings"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 112
    iget-object v6, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/common/app/PermissionDialogBuilder;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    const-string/jumbo v2, ""

    .line 122
    .local v2, "messageString":Ljava/lang/String;
    new-instance v5, Lcom/meizu/common/util/PermissionUtils;

    iget-object v6, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/meizu/common/util/PermissionUtils;-><init>(Landroid/content/Context;)V

    .line 123
    .local v5, "utils":Lcom/meizu/common/util/PermissionUtils;
    invoke-virtual {v5, p2}, Lcom/meizu/common/util/PermissionUtils;->loadPemissionLables([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "result":[Ljava/lang/String;
    if-nez v4, :cond_5

    .line 128
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->setMessage(Ljava/lang/String;)V

    .line 129
    return-void

    .line 110
    .end local v2    # "messageString":Ljava/lang/String;
    .end local v4    # "result":[Ljava/lang/String;
    .end local v5    # "utils":Lcom/meizu/common/util/PermissionUtils;
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 113
    .local v0, "i":I
    :goto_2
    array-length v6, p2

    if-lt v0, v6, :cond_3

    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "permissionStrings":[Ljava/lang/String;
    check-cast p2, [Ljava/lang/String;

    .restart local p2    # "permissionStrings":[Ljava/lang/String;
    goto :goto_0

    .line 114
    :cond_3
    aget-object v3, p2, v0

    .line 115
    .local v3, "permission":Ljava/lang/String;
    sget-object v6, Lcom/meizu/common/app/PermissionDialogBuilder;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 124
    .end local v0    # "i":I
    .end local v3    # "permission":Ljava/lang/String;
    .restart local v2    # "messageString":Ljava/lang/String;
    .restart local v4    # "result":[Ljava/lang/String;
    .restart local v5    # "utils":Lcom/meizu/common/util/PermissionUtils;
    :cond_5
    array-length v6, v4

    if-lez v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mFormatString:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, " \u3001"

    invoke-direct {p0, v4, v9}, Lcom/meizu/common/app/PermissionDialogBuilder;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public setOnPermissonListener(Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    .line 154
    return-void
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    if-nez v0, :cond_2

    .line 217
    :goto_0
    return-object v1

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder;->mOnPermissionClickListener:Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    invoke-interface {v0, v1, v2, v2}, Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;->onPerMisssionClick(Landroid/content/DialogInterface;ZZ)V

    goto :goto_0
.end method
