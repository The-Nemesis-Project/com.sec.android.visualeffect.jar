.class Lcom/sec/android/visualeffect/blind/BlindEffect$4;
.super Ljava/lang/Object;
.source "BlindEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/blind/BlindEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const v4, 0x3e2e147b

    .line 209
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$700(Lcom/sec/android/visualeffect/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$400(Lcom/sec/android/visualeffect/blind/BlindEffect;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    # += operator for: Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F
    invoke-static {v1, v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$416(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F

    .line 210
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$900(Lcom/sec/android/visualeffect/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$800(Lcom/sec/android/visualeffect/blind/BlindEffect;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    # += operator for: Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F
    invoke-static {v1, v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$816(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F

    .line 211
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$700(Lcom/sec/android/visualeffect/blind/BlindEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$500(Lcom/sec/android/visualeffect/blind/BlindEffect;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    # += operator for: Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F
    invoke-static {v1, v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$516(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # getter for: Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$1000(Lcom/sec/android/visualeffect/blind/BlindEffect;)I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 214
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$4;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # invokes: Lcom/sec/android/visualeffect/blind/BlindEffect;->setScale(I)V
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$1100(Lcom/sec/android/visualeffect/blind/BlindEffect;I)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 216
    :cond_4d
    return-void
.end method
