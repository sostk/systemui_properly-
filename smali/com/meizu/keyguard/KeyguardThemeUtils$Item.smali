.class public Lcom/meizu/keyguard/KeyguardThemeUtils$Item;
.super Ljava/lang/Object;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public mTarget:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/KeyguardThemeUtils;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardThemeUtils;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;->mTarget:Ljava/lang/String;

    .line 276
    return-void
.end method
