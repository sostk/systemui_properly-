.class public final enum Lcom/meizu/common/widget/BadgeView$Stage;
.super Ljava/lang/Enum;
.source "BadgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/BadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/BadgeView$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/BadgeView$Stage;

.field public static final enum HIDENUM:Lcom/meizu/common/widget/BadgeView$Stage;

.field public static final enum SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/meizu/common/widget/BadgeView$Stage;

    const-string/jumbo v1, "SHOWNUM"

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/BadgeView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    new-instance v0, Lcom/meizu/common/widget/BadgeView$Stage;

    const-string/jumbo v1, "HIDENUM"

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/BadgeView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/BadgeView$Stage;->HIDENUM:Lcom/meizu/common/widget/BadgeView$Stage;

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->HIDENUM:Lcom/meizu/common/widget/BadgeView$Stage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/common/widget/BadgeView$Stage;->$VALUES:[Lcom/meizu/common/widget/BadgeView$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/BadgeView$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/meizu/common/widget/BadgeView$Stage;

    .line 46
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BadgeView$Stage;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/BadgeView$Stage;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/meizu/common/widget/BadgeView$Stage;->$VALUES:[Lcom/meizu/common/widget/BadgeView$Stage;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/BadgeView$Stage;

    return-object v0
.end method
