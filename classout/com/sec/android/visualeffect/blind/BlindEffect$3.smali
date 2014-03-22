.class Lcom/sec/android/visualeffect/blind/BlindEffect$3;
.super Ljava/lang/Object;
.source "BlindEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 187
    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$3;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 200
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$3;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    # invokes: Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$600(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    .line 197
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    return-void
.end method
