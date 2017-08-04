.class Lcom/android/systemui/statusbar/BaseStatusBar$11;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appNameF:Ljava/lang/String;

.field final synthetic val$appUidF:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$appUidF"    # I
    .param p4, "val$appNameF"    # Ljava/lang/String;

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$appUidF:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$appNameF:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$appUidF:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$appNameF:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;ILjava/lang/String;)V

    .line 1106
    return-void
.end method
