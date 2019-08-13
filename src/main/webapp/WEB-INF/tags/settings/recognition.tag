<%@ tag description="Recognition settings" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="settingsType" required="true" %>
<c:choose>
    <%-- General settings --%>
    <c:when test="${settingsType == 'general'}">
        <table class="compact">
            <tbody>
                <tr>
                    <td><p>Recognition engine</p></td>
                    <td>
                        <input name="--engine" type="radio" class="with-gap" id="--engine-calamari"/>
                        <label for="--engine-calamari">Calamari</label>
                        <input name="--engine" type="radio" class="with-gap" data-setting="--engine-tesseract" id="--engine-tesseract"/>
                        <label for="--engine-tesseract">Tesseract</label>
                    </td>
                </tr>
                <tr>
                    <td><p>Number of parallel threads for program execution</p></td>
                    <td>
                        <div class="input-field">
                            <input id="recognition--processes" data-setting="--processes" type="number" />
                            <label for="recognition--processes" data-type="int" data-error="Has to be integer">Default: 1 | Current: Available threats (Int value)</label>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td><p>Line recognition models</p></td>
                    <td>
                        <select multiple="multiple" data-setting="--checkpoint" id="recognition--checkpoint" name="--checkpoint[]"></select>
                    </td>
                </tr>
            </tbody>
        </table>
    </c:when>
    <%-- Advanced settings --%>
    <c:when test="${settingsType == 'advanced'}">
        <table class="compact">
            <tbody>
                <tr>
                    <td><p>Print additional information</p></td>
                    <td>
                        <p>
                            <input type="checkbox" class="filled-in" data-setting="--verbose" id="recognition--verbose" checked="checked"/>
                            <label for="recognition--verbose"></label>
                        </p>
                    </td>
                 </tr>
                 <tr>
                    <td><p>Number of lines to process in parallel (Batch size)</p></td>
                    <td>
                        <div class="input-field">
                            <input id="recognition--batch_size" data-setting="--batch_size" type="number" step="1" value="5"/>
                            <label for="recognition--batch_size" data-type="int" data-error="Has to be Int">Default: 1</label>
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td><p>The voting algorithm to use</p></td>
                    <td>
                        <div class="input-field">
                            <select id="recognition--voter" data-setting="--voter" name="voter">
                                <option value="confidence_voter_default_ctc">confidence_voter_default_ctc</option>
                                <option value="confidence_voter_fuzzy_ctc">confidence_voter_fuzzy_ctc</option>
                                <option value="sequence_voter">sequence_voter</option>
                            </select>
                            <label></label>
                        </div>
                    </td>
                 </tr>
            </tbody>
        </table>
    </c:when>
</c:choose>
