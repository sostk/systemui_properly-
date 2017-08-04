.class public Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;
.super Ljava/lang/Object;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Recents"
.end annotation


# instance fields
.field public mClearAllBehindColor:I

.field public mClearAllFrontColor:I

.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/KeyguardThemeUtils;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardThemeUtils;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const v0, 0x33ffffff

    iput v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;->mClearAllBehindColor:I

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;->mClearAllFrontColor:I

    .line 335
    return-void
.end method
