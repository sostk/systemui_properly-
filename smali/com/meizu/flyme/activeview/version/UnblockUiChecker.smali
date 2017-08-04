.class public Lcom/meizu/flyme/activeview/version/UnblockUiChecker;
.super Ljava/lang/Object;
.source "UnblockUiChecker.java"


# instance fields
.field private mBaseChecker:Lcom/meizu/flyme/activeview/version/BaseChecker;

.field private mIsChecking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/version/CheckListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/version/CheckListener;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/meizu/flyme/activeview/version/BaseChecker;

    invoke-direct {v0, p1, p2}, Lcom/meizu/flyme/activeview/version/BaseChecker;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/version/CheckListener;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->mBaseChecker:Lcom/meizu/flyme/activeview/version/BaseChecker;

    .line 14
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/version/UnblockUiChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->mIsChecking:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;)Lcom/meizu/flyme/activeview/version/BaseChecker;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->mBaseChecker:Lcom/meizu/flyme/activeview/version/BaseChecker;

    return-object v0
.end method


# virtual methods
.method public isChecking()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->mIsChecking:Z

    return v0
.end method

.method public startCheck()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker$1;-><init>(Lcom/meizu/flyme/activeview/version/UnblockUiChecker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    return-void
.end method
