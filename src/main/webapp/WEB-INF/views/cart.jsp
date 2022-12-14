<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>P E T M A L L</title>
<style>
.cart-title {
    margin: 30px;
}
.full-price {
    font-size: 26px;
}
.pay-button {
    font-size: 24px;
    height: 40px;
    width: 130px;
    color: white;
    background-color: Turquoise;
    border: none;
    border-radius: 10px;
}
#inputQuantity {
    width: 90px;
    height: 30px;
}
</style>



</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jspf" %>

<div class="cart-title">
        <h1>πμ₯λ°κ΅¬λ</h1>
</div>

<div class="page-wrapper" style="padding: 0 0 30px 0;">
<hr class="color-hr">
    <div class="cart shopping">
        <div class="container" style="width: 1100px; padding: 10px;">
            <div class="row">
                <div class="col-md-12">
                    <div class="block">
                        <div class="product-list">
                            <table class="table" >
                            <thead>
                                <tr>
                                    <th>μνλͺ</th>
                                    <th>μλ</th>
                                    <th>κ°κ²©</th>
                                    <th></th>
                                </tr>
                            </thead>
                                <tbody>
                                    <c:if test="${empty cartList}">
                                        <tr>
                                            <td>
                                                <h3>μ₯λ°κ΅¬λκ° λΉμμ΅λλ€. λ§μμ λλ μ νμ λ΄μλ³΄μΈμ~!</h3>
                                            </td>
                                        </tr>
                                    </c:if>
                                    <c:forEach var="cart" items="${cartList}">
                                        <tr class="">
                                            <td class="">
                                                <div class="product-info">
                                                    <img width="100" src="${cart.productDTO.thumbnail}" alt="" />
                                                    <a href="/readProduct?productNum=${cart.productNum}"
                                                    style="font-weight: 400;">${cart.productDTO.name}</a>
                                                </div>
                                            </td>
                                            <td>
                                                <input type="text" id="inputQuantity" name="quantity" value="${cart.quantity}" placeholder="μλμλ ₯">
                                            </td>
                                            <td><span id="totalPrice">${cart.productDTO.price}</span>μ</td>
                                            <td class="">
                                                <a class="product-remove" href="/deleteCart?cartNum=${cart.cartNum}&id=${member.id}">μ­μ </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <hr class="color-hr"><br>
                            <c:if test="${!empty cartList}">
                                <form method="post" id="buyProductInCart">
                                    <input type="hidden" name="productNum" id="productNum" value="100"> <!-- μ₯λ°κ΅¬λ λͺ¨λ  νλ² λ€μ΄κ° μ μκ² μμ ν΄μΌν¨ -->
                                    <input type="hidden" name="id" value="${member.id}">
                                    <input type="hidden" name="totalPrice" id="totalPrice" value="31500"> <!-- νμ€νΈκ° μλ ₯ -->
                                    <button type="button" class="pay-button pull-right" onclick="buyProduct();">κ΅¬λ§€νκΈ°</button>
                                </form>
                                <span class="full-price pull-right">μ΄ 31,500μ &nbsp;</span>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jspf" %>
<script>
    //alert("js test 05");
    function comingSoon() {
        alert("μλ°μ΄νΈ μμ μλλ€.");
    }

    function buyProduct() {
        let buyProductInCart = document.getElementById("buyProductInCart");
        let popTitle = "μ₯λ°κ΅¬λ μν κ΅¬λ§€νκΈ°";
        if(${member == null}) {
            alert("λ‘κ·ΈμΈμ΄ νμν©λλ€.");
            return false;
        }
        console.log("μ°½μ΄λ¦ νμΈ : ", popTitle);
        window.open("", popTitle, "width=375, height=500");
        buyProductInCart.target = popTitle;
        buyProductInCart.action = "/payment";
        buyProductInCart.submit();
    }

</script>
</body>
</html>



