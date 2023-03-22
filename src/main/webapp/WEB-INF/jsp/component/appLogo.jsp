<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    Integer size = Integer.parseInt(request.getParameter("size"));

    out.println(
            "<svg width=\""+size+"px\" height=\""+size+"px\" viewBox=\"0 0 80 80\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n" +
            "    <path d=\"M39.9485 75.2154C59.8789 75.2154 76.0357 59.0586 76.0357 39.1282C76.0357 19.1978 59.8789 3.04102 39.9485 3.04102C20.0181 3.04102 3.86133 19.1978 3.86133 39.1282C3.86133 59.0586 20.0181 75.2154 39.9485 75.2154Z\" stroke=\"#A6E1FA\" stroke-width=\"6.0818\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>\n" +
            "    <path d=\"M65.2101 34.301L57.159 26.0009C56.8304 25.6621 56.4135 25.422 55.9555 25.3081L22.5063 17.008C22.0534 16.8956 21.5783 16.9108 21.1335 17.0519C20.6888 17.1931 20.2918 17.4547 19.9867 17.8077C19.6815 18.1607 19.4801 18.5913 19.4047 19.0518C19.3294 19.5122 19.3831 19.9846 19.5598 20.4164L38.2349 66.0667C38.402 66.4751 38.6732 66.8326 39.0214 67.1035C39.3696 67.3745 39.7828 67.5496 40.2197 67.6112C40.3357 67.6269 40.4527 67.6347 40.5697 67.6347C40.952 67.6345 41.3293 67.5475 41.6731 67.3803C42.0169 67.2131 42.3183 66.97 42.5545 66.6694L65.3797 37.6192C65.7574 37.1391 65.9484 36.5384 65.9172 35.9283C65.886 35.3182 65.6348 34.7401 65.2101 34.301ZM42.2712 34.3948L32.2264 25.3225C32.1663 25.2687 32.126 25.1963 32.1118 25.117C32.0977 25.0376 32.1106 24.9557 32.1483 24.8845C32.1861 24.8133 32.2467 24.7568 32.3204 24.724C32.394 24.6912 32.4765 24.684 32.5548 24.7036L49.1693 28.8266C49.2343 28.8428 49.2934 28.8768 49.3402 28.9247C49.387 28.9726 49.4195 29.0326 49.4341 29.098C49.4487 29.1633 49.4448 29.2314 49.4229 29.2947C49.401 29.358 49.3619 29.4139 49.31 29.4563L43.2185 34.4183C43.085 34.5269 42.9171 34.5842 42.7451 34.5799C42.573 34.5756 42.4082 34.5099 42.2803 34.3948H42.2712ZM40.0032 39.53L38.962 52.6928C38.9553 52.7734 38.9217 52.8494 38.8665 52.9086C38.8114 52.9677 38.738 53.0067 38.6581 53.0192C38.5783 53.0317 38.4965 53.017 38.4259 52.9774C38.3554 52.9379 38.3002 52.8758 38.2692 52.8011L29.0074 30.1473C28.9767 30.0717 28.9725 29.9879 28.9956 29.9096C29.0186 29.8313 29.0676 29.7631 29.1344 29.7162C29.2012 29.6693 29.2819 29.6464 29.3634 29.6513C29.4449 29.6562 29.5223 29.6886 29.583 29.7432L39.7686 38.9472C39.8506 39.0199 39.9151 39.1103 39.957 39.2116C39.9988 39.3129 40.0171 39.4224 40.0104 39.5318L40.0032 39.53ZM45.5967 40.3835L56.8667 39.2846C56.9372 39.2775 57.0083 39.2913 57.071 39.3243C57.1337 39.3573 57.1854 39.4081 57.2194 39.4702C57.2535 39.5324 57.2685 39.6032 57.2626 39.6739C57.2566 39.7445 57.23 39.8118 57.1861 39.8674L44.4166 56.1193C44.3689 56.1804 44.3027 56.2246 44.2279 56.2452C44.153 56.2657 44.0736 56.2616 44.0013 56.2335C43.929 56.2053 43.8677 56.1546 43.8264 56.0889C43.7852 56.0231 43.7663 55.9458 43.7725 55.8685L44.9471 41.0457C44.9624 40.8756 45.0375 40.7164 45.1591 40.5965C45.2807 40.4766 45.4408 40.4037 45.6111 40.3907L45.5967 40.3835ZM57.888 34.31L51.2389 34.9578C51.1789 34.9632 51.1188 34.9493 51.0673 34.918C51.0159 34.8868 50.9758 34.8398 50.953 34.7841C50.9302 34.7284 50.9258 34.6668 50.9406 34.6084C50.9554 34.55 50.9885 34.4979 51.035 34.4598L54.9 31.313C55.0091 31.2246 55.1474 31.1802 55.2876 31.1886C55.4278 31.1969 55.5599 31.2574 55.6578 31.3581L58.0612 33.8355C58.0983 33.8724 58.1243 33.9189 58.1365 33.9698C58.1486 34.0207 58.1462 34.074 58.1298 34.1237C58.1133 34.1733 58.0833 34.2174 58.0431 34.251C58.0029 34.2845 57.9542 34.3062 57.9024 34.3136L57.888 34.31Z\" fill=\"#1D99ED\"/>\n" +
            "</svg>"
    );

%>